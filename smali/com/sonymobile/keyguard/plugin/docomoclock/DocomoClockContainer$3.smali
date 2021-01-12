.class Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$3;
.super Landroid/content/BroadcastReceiver;
.source "DocomoClockContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->registerLockscreenMascotReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$3;->this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 259
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "eventType"

    const/4 v1, 0x0

    .line 260
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocomoClockContainer.onReceive(): eventType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocomoLockScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "DocomoClockContainer.onReceive(): ACTION_SCREEN_UNLOCK"

    .line 264
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "ACTION_UNLOCK"

    goto :goto_0

    :cond_1
    const-string p1, "LOCK_CLICK_POPUP"

    goto :goto_0

    :cond_2
    const-string p1, "LOCK_CLICK_MASCOT"

    .line 279
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocomoClockContainer.onReceive(): mascotAction = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 282
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$3;->this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;

    invoke-static {p0, p2, p1}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->access$200(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;ILjava/lang/String;)V

    :cond_3
    return-void
.end method
