.class public Lcom/android/systemui/statusbar/phone/NavigationBarFrame;
.super Landroid/widget/FrameLayout;
.source "NavigationBarFrame.java"


# static fields
.field private static final SupportOneHandTrigger:Z


# instance fields
.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/sonymobile/onehand/OneHandTriggerConfig;->shouldEnterBySwipeNavigationBar()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->SupportOneHandTrigger:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 41
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    .line 45
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->SupportOneHandTrigger:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    invoke-direct {v0, p1}, Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    .line 52
    sget-boolean p2, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->SupportOneHandTrigger:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    if-nez p2, :cond_0

    .line 53
    new-instance p2, Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    invoke-direct {p2, p1}, Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    .line 60
    sget-boolean p2, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->SupportOneHandTrigger:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    if-nez p2, :cond_0

    .line 61
    new-instance p2, Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    invoke-direct {p2, p1}, Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOneHandTriggerDetector:Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcom/sonymobile/onehand/OneHandTriggerGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 80
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method
