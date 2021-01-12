.class public Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;
.super Ljava/lang/Object;
.source "StartClockPickerTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;
    }
.end annotation


# instance fields
.field private mActiveTouch:Z

.field private final mClockPickerStarter:Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;

.field private final mContext:Landroid/content/Context;

.field private mDidHandleClick:Z

.field private final mDismissTouchDistancePX:F

.field private final mHandler:Landroid/os/Handler;

.field private final mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

.field private mStartTouchX:F

.field private mStartTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 54
    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchX:F

    .line 59
    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    .line 71
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    .line 87
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mClockPickerStarter:Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;

    .line 89
    new-instance p1, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;-><init>(Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    .line 90
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mHandler:Landroid/os/Handler;

    .line 92
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    .line 95
    iput p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDismissTouchDistancePX:F

    goto :goto_0

    .line 97
    :cond_0
    iput p2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDismissTouchDistancePX:F

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->startPicker(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->reset()V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 158
    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    .line 159
    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchX:F

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    .line 161
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    return-void
.end method

.method private start(Landroid/view/MotionEvent;)V
    .locals 1

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchX:F

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    return-void
.end method

.method private startPicker(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    .line 172
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->somc_keyguard_use_default_clock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 176
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mClockPickerStarter:Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;

    invoke-interface {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;->displayClockPluginPicker()V

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->reset()V

    goto :goto_0

    .line 116
    :cond_1
    iget p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchX:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_5

    iget v1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    .line 118
    iget v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v0, p2

    mul-float/2addr p1, p1

    mul-float/2addr v0, v0

    add-float/2addr p1, v0

    .line 119
    iget p2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDismissTouchDistancePX:F

    mul-float/2addr p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 121
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->reset()V

    goto :goto_0

    .line 126
    :cond_2
    iget-boolean p2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    if-nez p2, :cond_3

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->reset()V

    goto :goto_0

    .line 108
    :cond_4
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->start(Landroid/view/MotionEvent;)V

    .line 111
    iget-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    invoke-virtual {p2, p1}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;->setView(Landroid/view/View;)V

    .line 112
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    .line 113
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 112
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_5
    :goto_0
    iget-boolean p0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    return p0
.end method
