.class Lcom/android/systemui/recents/views/TaskStackView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0

    .line 1816
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1818
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackView;->access$200(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1820
    iget-object p0, p0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskStackView;->access$200(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->resize()V

    :cond_0
    return-void
.end method
