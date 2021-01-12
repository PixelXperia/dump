.class public Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$FingerprintFBCallBack;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerPrintFeedBackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FingerprintFBCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$FingerprintFBCallBack;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    .line 222
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$FingerprintFBCallBack;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {p0, p2}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$400(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$FingerprintFBCallBack;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {p0, p2}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$400(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;Ljava/lang/String;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$FingerprintFBCallBack;->this$0:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->access$200(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    return-void
.end method
