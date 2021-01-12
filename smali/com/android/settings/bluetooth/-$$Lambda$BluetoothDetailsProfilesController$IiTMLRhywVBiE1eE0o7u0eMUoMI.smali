.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$IiTMLRhywVBiE1eE0o7u0eMUoMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$IiTMLRhywVBiE1eE0o7u0eMUoMI;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$IiTMLRhywVBiE1eE0o7u0eMUoMI;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->lambda$maybeAddWirelessQualityAudioPref$1$BluetoothDetailsProfilesController(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
