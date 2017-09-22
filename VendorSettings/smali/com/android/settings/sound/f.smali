.class Lcom/android/vendorsettings/sound/f;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"

# interfaces
.implements Lcom/android/vendorsettings/sound/v;


# instance fields
.field final synthetic aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/vendorsettings/sound/f;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cf(I)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/sound/f;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->a(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/sound/f;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->a(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    return-void
.end method
