.class Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockscreenAssistIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistIconReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sonymobile.keyguard.assist.action.SHOW_ICON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const-string v3, "com.sonymobile.keyguard.assist.extra.RES_ID"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1002(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;I)I

    .line 316
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1000(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1100(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;I)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$202(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    const-string v0, "com.sonymobile.keyguard.assist.extra.LAUNCH_INTENT"

    .line 317
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    .line 318
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    instance-of v2, p2, Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/app/PendingIntent;

    :cond_0
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$302(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 319
    iget-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p2}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$600(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    .line 320
    iget-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    .line 321
    invoke-static {p2}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1200(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1000(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)I

    move-result p0

    .line 320
    invoke-static {p1, p2, p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAssistIconReporter;->sendReceiveEvent(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sonymobile.keyguard.assist.action.HIDE_ICON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 323
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1300(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)V

    .line 324
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$202(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 325
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$302(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 326
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1002(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;I)I

    .line 327
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1202(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1402(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;J)J

    :cond_2
    :goto_0
    return-void
.end method
