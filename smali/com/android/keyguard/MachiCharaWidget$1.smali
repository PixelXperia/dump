.class Lcom/android/keyguard/MachiCharaWidget$1;
.super Landroid/content/BroadcastReceiver;
.source "MachiCharaWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MachiCharaWidget;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MachiCharaWidget;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MachiCharaWidget;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/keyguard/MachiCharaWidget$1;->this$0:Lcom/android/keyguard/MachiCharaWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 161
    sget-boolean p1, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockLog;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MachiCharaWidget: Intent.getAction() - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocomoLockScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/android/keyguard/MachiCharaWidget$1;->this$0:Lcom/android/keyguard/MachiCharaWidget;

    const-string v0, "RemoteViews"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lcom/android/keyguard/MachiCharaWidget;->access$002(Lcom/android/keyguard/MachiCharaWidget;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 166
    iget-object p1, p0, Lcom/android/keyguard/MachiCharaWidget$1;->this$0:Lcom/android/keyguard/MachiCharaWidget;

    invoke-static {p1}, Lcom/android/keyguard/MachiCharaWidget;->access$000(Lcom/android/keyguard/MachiCharaWidget;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/android/keyguard/MachiCharaWidget$1;->this$0:Lcom/android/keyguard/MachiCharaWidget;

    invoke-virtual {p1}, Lcom/android/keyguard/MachiCharaWidget;->isMascotAppRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/android/keyguard/MachiCharaWidget$1;->this$0:Lcom/android/keyguard/MachiCharaWidget;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/keyguard/MachiCharaWidget;->access$002(Lcom/android/keyguard/MachiCharaWidget;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 171
    :cond_1
    new-instance p1, Lcom/android/keyguard/MachiCharaWidget$1$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/MachiCharaWidget$1$1;-><init>(Lcom/android/keyguard/MachiCharaWidget$1;)V

    .line 177
    iget-object p0, p0, Lcom/android/keyguard/MachiCharaWidget$1;->this$0:Lcom/android/keyguard/MachiCharaWidget;

    invoke-static {p0}, Lcom/android/keyguard/MachiCharaWidget;->access$200(Lcom/android/keyguard/MachiCharaWidget;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
