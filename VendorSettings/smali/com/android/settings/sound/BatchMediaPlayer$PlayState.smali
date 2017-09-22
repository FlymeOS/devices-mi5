.class final enum Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;
.super Ljava/lang/Enum;
.source "BatchMediaPlayer.java"


# static fields
.field public static final enum aqF:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

.field public static final enum aqG:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

.field private static final synthetic aqH:[Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->aqF:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    new-instance v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->aqG:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    sget-object v1, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->aqF:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->aqG:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->aqH:[Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    return-object v0
.end method

.method public static values()[Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->aqH:[Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    invoke-virtual {v0}, [Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    return-object v0
.end method
