.class Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;
.super Landroid/database/ContentObserver;
.source "LockscreenStyleCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;Landroid/os/Handler;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 71
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-virtual {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->isStyleCoverViewSelectedAndClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$200(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$200(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed(Z)Z

    .line 84
    :cond_1
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->updateLockColors(Z)V

    .line 86
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$300(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->access$300(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setStyleCoverViewSelectedAndClosed(Z)V

    :cond_2
    return-void
.end method
