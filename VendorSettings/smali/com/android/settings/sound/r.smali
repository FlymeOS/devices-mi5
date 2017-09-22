.class Lcom/android/vendorsettings/sound/r;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/vendorsettings/sound/r;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/vendorsettings/sound/r;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->a(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V

    .line 50
    return-void
.end method
