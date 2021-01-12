.class Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockscreenClockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->exitClockPicker()V

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->access$002(Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;I)I

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->clearClockPickerView()V

    return-void
.end method
