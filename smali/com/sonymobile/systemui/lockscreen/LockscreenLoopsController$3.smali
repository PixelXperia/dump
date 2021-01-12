.class Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockscreenLoopsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$500(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    .line 129
    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$600(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$500(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)V

    :cond_1
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)V

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 137
    iget-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p2}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$500(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    .line 138
    invoke-static {p2}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$600(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p2}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$500(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    .line 140
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)V

    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {v0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$302(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;Z)Z

    .line 117
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$200(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$200(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$700(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)V

    .line 154
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$200(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$700(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)V

    .line 148
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$200(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$700(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)V

    .line 160
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$802(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)I

    .line 161
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$200(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V

    return-void
.end method
