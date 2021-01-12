.class Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;
.super Ljava/lang/Object;
.source "TakeScreenshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

.field final synthetic val$callback:Landroid/os/Messenger;

.field final synthetic val$workingFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Ljava/lang/Runnable;Landroid/os/Messenger;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;->this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;->val$workingFinishRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;->val$callback:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;->this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100(Lcom/android/systemui/screenshot/TakeScreenshotService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;->val$workingFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;->val$workingFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 58
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;->val$callback:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
