.class public Lcom/google/android/systemui/OpaEnableDispatcher;
.super Ljava/lang/Object;
.source "OpaEnableDispatcher.java"


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/systemui/OpaEnableDispatcher;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/android/systemui/OpaEnableDispatcher;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    return-void
.end method

.method private dispatchUnchecked(Z)V
    .locals 2

    .line 41
    iget-object p0, p0, Lcom/google/android/systemui/OpaEnableDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez p0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getViews()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 55
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 56
    check-cast v1, Lcom/google/android/systemui/OpaLayout;

    invoke-virtual {v1, p1}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isGsaCurrentAssistant()Z
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/google/android/systemui/OpaEnableDispatcher;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 62
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.googlequicksearchbox/com.google.android.voiceinteraction.GsaVoiceInteractionService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dispatchOpaEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/google/android/systemui/OpaEnableDispatcher;->isGsaCurrentAssistant()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/OpaEnableDispatcher;->dispatchUnchecked(Z)V

    return-void
.end method
