.class public Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView$HeadsUpFooterState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "HeadsUpFooterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadsUpFooterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView$HeadsUpFooterState;->this$0:Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 3

    .line 133
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyToView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / yTrans="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " clipTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 136
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;

    if-eqz v0, :cond_1

    .line 137
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView$HeadsUpFooterState;->this$0:Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->access$000(Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView$HeadsUpFooterState;->this$0:Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->access$000(Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->isVisible()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_1
    return-void
.end method
