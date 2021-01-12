.class Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$5;
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


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$5;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$5;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$500(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 439
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 440
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoPlaybackView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$5;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$1300(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
