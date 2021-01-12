.class public Lcom/sonymobile/keyguard/aod/AodStateReportHelper;
.super Ljava/lang/Object;
.source "AodStateReportHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AodStateReportHelper"


# direct methods
.method public static reportState(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 8

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.lockscreen.ambient.STATE_CHANGE"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getSmartOn()Z

    move-result v1

    const-string v2, "REASON"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xb

    const/4 v7, 0x4

    if-eqz v1, :cond_3

    .line 35
    sget-object p1, Lcom/sonymobile/keyguard/aod/AodStateReportHelper$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_b

    if-eq p1, v7, :cond_0

    return-void

    :cond_0
    move v3, v6

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupOn()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    sget-object p1, Lcom/sonymobile/keyguard/aod/AodStateReportHelper$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v5, :cond_5

    if-eq p1, v7, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    return-void

    :cond_4
    const/16 v3, 0x9

    .line 59
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const/16 v3, 0x8

    goto :goto_0

    .line 67
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 68
    sget-object p1, Lcom/sonymobile/keyguard/aod/AodStateReportHelper$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v7, :cond_0

    return-void

    :cond_7
    const/4 v3, 0x6

    goto :goto_0

    :cond_8
    const/4 v3, 0x7

    goto :goto_0

    .line 82
    :cond_9
    sget-object p1, Lcom/sonymobile/keyguard/aod/AodStateReportHelper$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v5, :cond_a

    if-eq p1, v7, :cond_0

    return-void

    :cond_a
    const/16 v3, 0xa

    :cond_b
    :goto_0
    const-string p1, "STATUS"

    .line 93
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.devicemonitor"

    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_c

    .line 96
    sget-object p1, Lcom/sonymobile/keyguard/aod/AodStateReportHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reason:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_c
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
