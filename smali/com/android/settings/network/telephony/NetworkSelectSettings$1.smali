.class Lcom/android/settings/network/telephony/NetworkSelectSettings$1;
.super Landroid/os/Handler;
.source "NetworkSelectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkSelectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "com.android.phone"

    .line 335
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x7f120741

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "NetworkSelectSettings"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "EVENT_DATA_DISCONNECTED"

    .line 414
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    goto/16 :goto_2

    :pswitch_1
    const-string p1, "EVENT_DISABLE_DATA_TRAFFIC"

    .line 393
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1000(Lcom/android/settings/network/telephony/NetworkSelectSettings;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable data traffic for subId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1, v4}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1202(Lcom/android/settings/network/telephony/NetworkSelectSettings;Z)Z

    .line 403
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object v0, p1, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)I

    move-result p1

    invoke-virtual {v0, p1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 404
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    goto/16 :goto_2

    :cond_0
    if-ne p1, v4, :cond_1

    .line 407
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1400(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Z

    const-string p0, "Show end call warning dialog."

    .line 408
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 410
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    goto/16 :goto_2

    .line 385
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$800(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    .line 386
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$900(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    .line 387
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    if-nez p1, :cond_5

    .line 389
    invoke-static {p0, v2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$700(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    goto/16 :goto_2

    .line 379
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$800(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    .line 380
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$900(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    .line 381
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    const p1, 0x7f120bbd

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$700(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    goto/16 :goto_2

    .line 366
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$600(Lcom/android/settings/network/telephony/NetworkSelectSettings;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellInfoList after aggregation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    .line 370
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p1, p1, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 371
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateAllPreferenceCategory()V

    goto :goto_2

    .line 373
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0, v2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$700(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    goto :goto_2

    .line 337
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 338
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 340
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 341
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object v1, v1, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz p1, :cond_3

    const v2, 0x7f120baa

    goto :goto_0

    :cond_3
    const v2, 0x7f120bb2

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    if-eqz p1, :cond_5

    .line 347
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$400(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 349
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    const-string v1, "registration_done"

    const-string v2, "string"

    .line 351
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 354
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 355
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$500(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 356
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "registration_done string not found"

    .line 361
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
