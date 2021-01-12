.class public Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;
.super Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.source "HeadsUpFooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView$HeadsUpFooterState;
    }
.end annotation


# instance fields
.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsNotificationExpanded:Z

.field private mIsTargetEntryValid:Z

.field private mMultiWindowButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private mMultiWindowButtonManager:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mIsNotificationExpanded:Z

    .line 32
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mIsTargetEntryValid:Z

    .line 36
    new-instance p2, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mMultiWindowButtonManager:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mMultiWindowButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method private setColor(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->notification_button_light_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 120
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_button_dark_image_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->notification_button_dark_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 123
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_button_light_image_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mMultiWindowButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mMultiWindowButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setVisible()V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView$HeadsUpFooterState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView$HeadsUpFooterState;-><init>(Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;)V

    return-object v0
.end method

.method protected findContentView()Landroid/view/View;
    .locals 1

    .line 41
    sget v0, Lcom/android/systemui/R$id;->heads_up_footer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected findSecondaryView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mIsNotificationExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mIsTargetEntryValid:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$setEntry$0$HeadsUpFooterView(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz p1, :cond_0

    .line 87
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 89
    :cond_0
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p1, "headsup_click"

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/statusbar/MultiWindowButtonLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onFinishInflate()V

    .line 52
    sget v0, Lcom/android/systemui/R$id;->heads_up_multiwindow_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mMultiWindowButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mMultiWindowButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 76
    sget-boolean v2, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEntry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " targetEntry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mIsTargetEntryValid:Z

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_3

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mMultiWindowButtonManager:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

    .line 80
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->isForegroundResizeable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mMultiWindowButtonManager:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->getMultiWindowButtonInvoker(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mMultiWindowButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$HeadsUpFooterView$hDnr-4vx3BZ5H0vWiU2PCG-1wvs;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$HeadsUpFooterView$hDnr-4vx3BZ5H0vWiU2PCG-1wvs;-><init>(Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldUseDark()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->setColor(Z)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mIsTargetEntryValid:Z

    if-eqz p2, :cond_3

    .line 94
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mIsNotificationExpanded:Z

    if-nez p1, :cond_3

    .line 95
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p2, "headsup_show"

    invoke-static {p1, p2}, Lcom/sonymobile/systemui/statusbar/MultiWindowButtonLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->setVisible()V

    return-void

    .line 72
    :cond_4
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public setIsNotificationExpanded(Z)V
    .locals 3

    .line 65
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsNotificationExpanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->mIsNotificationExpanded:Z

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/HeadsUpFooterView;->setVisible()V

    return-void
.end method
