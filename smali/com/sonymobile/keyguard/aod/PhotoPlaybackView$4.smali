.class Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;
.super Ljava/lang/Thread;
.source "PhotoPlaybackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->updatephotoPlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$position:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Landroid/net/Uri;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;->val$position:I

    iput-object p4, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;->val$uri:Landroid/net/Uri;

    iget v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$1200(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Landroid/net/Uri;I)V

    .line 424
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
