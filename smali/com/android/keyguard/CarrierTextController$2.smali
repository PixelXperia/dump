.class Lcom/android/keyguard/CarrierTextController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierTextController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierTextController;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo()V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    if-ltz p2, :cond_3

    .line 120
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1}, Lcom/android/keyguard/CarrierTextController;->access$200(Lcom/android/keyguard/CarrierTextController;)I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1, p3}, Lcom/android/keyguard/CarrierTextController;->access$300(Lcom/android/keyguard/CarrierTextController;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p1

    sget-object p3, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    if-ne p1, p3, :cond_1

    .line 128
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1}, Lcom/android/keyguard/CarrierTextController;->access$400(Lcom/android/keyguard/CarrierTextController;)[Z

    move-result-object p1

    const/4 p3, 0x1

    aput-boolean p3, p1, p2

    .line 129
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1}, Lcom/android/keyguard/CarrierTextController;->access$400(Lcom/android/keyguard/CarrierTextController;)[Z

    move-result-object p1

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1}, Lcom/android/keyguard/CarrierTextController;->access$400(Lcom/android/keyguard/CarrierTextController;)[Z

    move-result-object p1

    const/4 p3, 0x0

    aput-boolean p3, p1, p2

    .line 132
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    :cond_2
    :goto_0
    return-void

    .line 121
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSimStateChanged() - slotId invalid: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mTelephonyCapable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    .line 122
    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$100(Lcom/android/keyguard/CarrierTextController;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarrierTextController"

    .line 121
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTelephonyCapable(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {v0, p1}, Lcom/android/keyguard/CarrierTextController;->access$102(Lcom/android/keyguard/CarrierTextController;Z)Z

    .line 116
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    return-void
.end method
