.class Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onMediaVibrateModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$showStream:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Z)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$entry:Ljava/util/Map$Entry;

    iput-boolean p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$showStream:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$showStream:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onMediaVibrateModeChanged(Z)V

    return-void
.end method
