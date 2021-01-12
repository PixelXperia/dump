.class Lcom/sonymobile/settings/phone/DataRoamingSettings$2;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 119
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 120
    iget-object p2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 121
    iget-object p2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$800(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 129
    iget-object p2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 130
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    const p1, 0x16204a9a

    invoke-static {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$700(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$300(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 135
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    const p1, 0x16204a99

    invoke-static {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$600(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$900(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1000(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)I

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
