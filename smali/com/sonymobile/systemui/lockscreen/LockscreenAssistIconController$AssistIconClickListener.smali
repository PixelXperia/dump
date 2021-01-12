.class Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;
.super Ljava/lang/Object;
.source "LockscreenAssistIconController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistIconClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1600(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    .line 373
    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$anim;->somc_keyguard_assist_icon_tap:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener$1;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 391
    sget v0, Lcom/android/systemui/R$drawable;->somc_assist_icon_tapped:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 392
    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 393
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1602(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)Z

    .line 394
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1700(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 395
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1700(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->notification_tap_again:I

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 400
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1602(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)Z

    .line 401
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1700(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 402
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1700(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1800(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    .line 405
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    .line 406
    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1200(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1000(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)I

    move-result v1

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1400(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)J

    move-result-wide v2

    .line 405
    invoke-static {p1, v0, v1, v2, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAssistIconReporter;->sendTapEvent(Landroid/content/Context;Ljava/lang/String;IJ)V

    :cond_2
    :goto_0
    return-void
.end method
