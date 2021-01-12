.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$Wt0VVaRqaRBLIlC60H8b_89Gixo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

.field private final synthetic f$1:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field private final synthetic f$2:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field private final synthetic f$3:Landroidx/preference/SwitchPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroidx/preference/SwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$Wt0VVaRqaRBLIlC60H8b_89Gixo;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$Wt0VVaRqaRBLIlC60H8b_89Gixo;->f$1:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iput-object p3, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$Wt0VVaRqaRBLIlC60H8b_89Gixo;->f$2:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    iput-object p4, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$Wt0VVaRqaRBLIlC60H8b_89Gixo;->f$3:Landroidx/preference/SwitchPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$Wt0VVaRqaRBLIlC60H8b_89Gixo;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$Wt0VVaRqaRBLIlC60H8b_89Gixo;->f$1:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v2, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$Wt0VVaRqaRBLIlC60H8b_89Gixo;->f$2:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    iget-object p0, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$Wt0VVaRqaRBLIlC60H8b_89Gixo;->f$3:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->lambda$maybeAddHighQualityAudioPref$0$BluetoothDetailsProfilesController(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroidx/preference/SwitchPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
