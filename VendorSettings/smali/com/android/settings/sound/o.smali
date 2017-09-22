.class Lcom/android/vendorsettings/sound/o;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"


# instance fields
.field final synthetic aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

.field public aqw:Ljava/util/List;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/vendorsettings/sound/o;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/o;->aqw:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Lcom/android/vendorsettings/sound/e;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/sound/o;-><init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)V

    return-void
.end method
