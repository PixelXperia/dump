.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;
.super Ljava/lang/Object;
.source "ClockPickerController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->animateOutClockPicker(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field final synthetic val$clockPickerParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->val$clockPickerParent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->val$clockPickerParent:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$200(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

    .line 197
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->val$clockPickerParent:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$300(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

    .line 198
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->val$clockPickerParent:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$400(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

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
