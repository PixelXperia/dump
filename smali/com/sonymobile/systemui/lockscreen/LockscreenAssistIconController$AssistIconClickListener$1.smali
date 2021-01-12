.class Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener$1;
.super Ljava/lang/Object;
.source "LockscreenAssistIconController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;Landroid/view/View;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener$1;->this$1:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;

    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 381
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener$1;->this$1:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;

    iget-object p1, p1, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1602(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)Z

    .line 382
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 383
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener$1;->this$1:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;

    iget-object p1, p1, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1700(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 384
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener$1;->this$1:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$1700(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
