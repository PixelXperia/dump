.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 44
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 45
    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;)V

    .line 51
    new-instance v2, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Ljava/lang/Runnable;Landroid/os/Messenger;)V

    .line 64
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$002(Z)Z

    .line 68
    iget-object v3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100(Lcom/android/systemui/screenshot/TakeScreenshotService;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v1, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    const-string v3, "TakeScreenshotService"

    if-nez v1, :cond_1

    const-string p1, "Skipping screenshot because storage is locked!"

    .line 74
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v1

    if-nez v1, :cond_2

    .line 80
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$202(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 83
    :cond_2
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6

    const/4 v4, 0x2

    if-eq p0, v4, :cond_3

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid screenshot option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 88
    :cond_3
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V

    goto :goto_4

    .line 85
    :cond_6
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_7

    move v3, v0

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    :goto_4
    return-void
.end method
