.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;
.super Ljava/lang/Object;
.source "ClockPickerController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exchangeClockViewForPickerView(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->val$parentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 367
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->val$parentView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 370
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 371
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createSelectionTimeoutForSelectedPage()V

    .line 372
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->enableScaleContainerScaling()V

    .line 379
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$600(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 380
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->resizeDismissView(Landroid/view/View;)V

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
