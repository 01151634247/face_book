
import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class UserVideoPost extends StatefulWidget {
  final String userProfile;
  final String userPost;
    final String userName;
 final  String ?postDate;
  final String ?numLikes;
  final String ?numComment;
 final  String ?numShare;
 const UserVideoPost({super.key,required this.userName,required  this.userProfile,required this.userPost, this.postDate, this.numComment, this.numLikes, this.numShare});

  @override
  State<UserVideoPost> createState() => _UserVideoPostState();

}

class _UserVideoPostState extends State<UserVideoPost> {
  VideoPlayerController? videoPlayerController;
  bool _isInitialized = false;
  bool isplaying = false;

  @override
  void initState() {
    super.initState();
    // التحقق من أن النص ليس فارغاً قبل تشغيل الفيديو
    if (widget.userPost.isNotEmpty) {
      videoPlayerController = VideoPlayerController.asset(widget.userPost)
        ..initialize().then((_) {
          // التأكد من أن الشاشة ما زالت مفتوحة قبل عمل setState
          if (mounted) {
            setState(() {
              _isInitialized = true;
            });
          }
        }).catchError((error) {
          debugPrint("حدث خطأ أثناء تحميل الفيديو: $error");
        });
    }
  }

  @override
  void dispose() {
    // خطوة إجبارية لمنع الـ Memory Leak وتوقف التطبيق
    videoPlayerController?.dispose();
    super.dispose();
  }

  @override
 Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      widget.userProfile,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.userName,
                        style: text.textStyle18.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.postDate ?? "30 August",
                            style: text.textStyle15,
                          ),
                          const SizedBox(width: 3),
                          const Icon(Icons.group, size: 16, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.more_horiz),
                    Icon(Icons.close_rounded),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),

        // التعديل الجوهري لحماية مشغل الفيديو من الانهيار
        if (widget.userPost.isNotEmpty && videoPlayerController != null && _isInitialized)
          GestureDetector(
            onTap: () {
              setState(() {
                if (videoPlayerController!.value.isPlaying) {
                  videoPlayerController!.pause();
                } else {
                  videoPlayerController!.play();
                }
                isplaying = videoPlayerController!.value.isPlaying;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: videoPlayerController!.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController!),
                ),
                if (!isplaying)
                  const Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: 40,
                  ),
              ],
            ),
          )
        else if (widget.userPost.isEmpty)
          const SizedBox(
            height: 200,
            child: Center(child: Text('لا يوجد فيديو لعرضه')),
          )
        else
          const SizedBox(
            height: 200,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),

        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 120, // زيادة الطول ليناسب حجم الخط والأيقونات دون تداخل
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Image.asset('assets/icons/like.png', height: 25),
                    Positioned(
                      left: 18,
                      child: Image.asset('assets/icons/heart (2).png', height: 25),
                    ),
                    Positioned(
                      left: 48,
                      child: Text(
                        widget.numLikes ?? "9",
                        style: text.textStyle18.copyWith(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "${widget.numComment ?? "10"} comment",
                    style: text.textStyle18.copyWith(
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Text(
                    '${widget.numShare ?? "20"} share',
                    style: text.textStyle18.copyWith(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildActionButton(Icons.thumb_up_alt_outlined, 'Like'),
              _buildActionButton(Icons.chat_bubble_outline, 'Comment'),
              _buildActionButton(Icons.share, 'Send'),
              _buildActionButton(Icons.mobile_screen_share_rounded, 'Share'),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Divider(thickness: 3),
        const SizedBox(height: 10),
      ],
    );
  }

  // دالة مضافة لاختصار تكرار كود أزرار التفاعل بالأسفل وتنظيف الكود
  Widget _buildActionButton(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 20),
        const SizedBox(width: 4),
        Text(label, style: text.textStyle15),
      ],
    );
  }
}