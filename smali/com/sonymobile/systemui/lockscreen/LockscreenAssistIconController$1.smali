.class Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockscreenAssistIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/keyguard/SomcUsmHelper;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$202(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 99
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$302(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    :cond_0
    if-eqz p1, :cond_1

    .line 102
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)V

    .line 129
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$202(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 130
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$302(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 131
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$500(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    return-void
.end method
