.class Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$2;
.super Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback$Stub;
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

    .line 90
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-direct {p0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;->hide(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;->show()V

    :cond_0
    return-void
.end method
