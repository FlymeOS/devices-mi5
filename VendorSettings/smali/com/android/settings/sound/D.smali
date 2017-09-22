.class Lcom/android/vendorsettings/sound/D;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aqV:Lcom/android/vendorsettings/sound/RingerVolumeFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/RingerVolumeFragment;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/vendorsettings/sound/D;->aqV:Lcom/android/vendorsettings/sound/RingerVolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/vendorsettings/sound/D;->aqV:Lcom/android/vendorsettings/sound/RingerVolumeFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/RingerVolumeFragment;->ut()V

    .line 228
    return-void
.end method
