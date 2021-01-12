.class Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$1;
.super Ljava/lang/Object;
.source "LockscreenLoopsController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 77
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p2}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$002(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;)Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    .line 80
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-virtual {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->onThemeChanged()V

    .line 81
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->setLoopsColorOnAmbient()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->access$002(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;)Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    return-void
.end method
