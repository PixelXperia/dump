.class public Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"


# static fields
.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFirstPointerDownX:F

.field private mFirstPointerDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private final mOnAccessibilityShortcutCallback:Ljava/lang/Runnable;

.field private mSecondPointerDownX:F

.field private mSecondPointerDownY:F

.field private final mTone:Landroid/media/Ringtone;

.field private final mTouchSlop:F

.field private final mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 52
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xb

    .line 53
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;-><init>(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 106
    iput-object p2, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mOnAccessibilityShortcutCallback:Ljava/lang/Runnable;

    .line 107
    new-instance p2, Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$2;-><init>(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)V

    invoke-direct {p2, p1, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p2, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 117
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    .line 118
    iget-object p2, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xa

    .line 119
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 118
    invoke-virtual {p2, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050009

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mTouchSlop:F

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->performAccessibilityShortcut()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/media/Ringtone;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->vibrate()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mDestroyed:Z

    return p0
.end method

.method public static canEnableAccessibilityViaGesture(Landroid/content/Context;)Z
    .locals 5

    .line 126
    invoke-static {p0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->isAccessibilityShortcutGestureEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 130
    :cond_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    .line 134
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 140
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 141
    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_shortcut_on_lock_screen"

    invoke-static {v3, v4, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    .line 144
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->isShortcutEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    invoke-static {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->getInfoForTargetService(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 146
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method private cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mCanceled:Z

    .line 206
    iget-object v1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private static getInfoForTargetService(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .line 252
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 253
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 255
    invoke-static {p0, v1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getShortcutTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 260
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 259
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 3

    .line 264
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 268
    :cond_0
    array-length p1, p0

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 269
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 270
    aget v1, p0, v0

    int-to-long v1, v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 1

    .line 247
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 248
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private performAccessibilityShortcut()V
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->getInfoForTargetService(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "EnableAccessibilityController"

    const-string v0, "Accessibility shortcut set to invalid service"

    .line 229
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x1040057

    goto :goto_0

    :cond_1
    const v2, 0x1040058

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 238
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 237
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    .line 243
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mOnAccessibilityShortcutCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private vibrate()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 219
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x107004c

    invoke-static {p0, v1}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p0

    const/4 v1, -0x1

    .line 222
    sget-object v2, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mDestroyed:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 156
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mFirstPointerDownX:F

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mFirstPointerDownY:F

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mSecondPointerDownX:F

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mSecondPointerDownY:F

    .line 160
    iget-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    const-wide/16 v1, 0x1770

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v0

    :cond_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 172
    iget-boolean v2, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mCanceled:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v1, v4, :cond_0

    .line 174
    iput-boolean v3, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mCanceled:Z

    :cond_0
    return v4

    :cond_1
    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    const/4 p1, 0x5

    if-eq v1, p1, :cond_2

    const/4 p1, 0x6

    if-eq v1, p1, :cond_3

    goto :goto_0

    :cond_2
    if-le v0, v2, :cond_6

    .line 181
    invoke-direct {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 198
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 185
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 186
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mFirstPointerDownX:F

    iget v3, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mFirstPointerDownY:F

    .line 185
    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    .line 187
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 188
    invoke-direct {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->cancel()V

    .line 190
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 191
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mSecondPointerDownX:F

    iget v2, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mSecondPointerDownY:F

    .line 190
    invoke-static {v0, p1, v1, v2}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result p1

    .line 192
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 193
    invoke-direct {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->cancel()V

    :cond_6
    :goto_0
    return v4
.end method
