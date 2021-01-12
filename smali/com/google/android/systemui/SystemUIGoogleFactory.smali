.class public Lcom/google/android/systemui/SystemUIGoogleFactory;
.super Lcom/android/systemui/SystemUIFactory;
.source "SystemUIGoogleFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/systemui/SystemUIFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public provideAssistManager(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)Lcom/android/systemui/assist/AssistManager;
    .locals 0

    .line 21
    new-instance p0, Lcom/google/android/systemui/AssistManagerGoogle;

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/AssistManagerGoogle;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V

    return-object p0
.end method
