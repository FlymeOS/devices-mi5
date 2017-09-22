.class Lcom/android/settings/sound/e;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic aqn:Lcom/android/settings/sound/AudioSettingsFragment;

.field private bm:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/AudioSettingsFragment;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/sound/e;->aqn:Lcom/android/settings/sound/AudioSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/e;->bm:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/sound/n;Lcom/android/settings/sound/n;)I
    .locals 4

    .prologue
    .line 89
    iget-wide v0, p1, Lcom/android/settings/sound/n;->aqv:J

    iget-wide v2, p2, Lcom/android/settings/sound/n;->aqv:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/sound/e;->bm:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/sound/n;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/sound/n;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p2, Lcom/android/settings/sound/n;->aqv:J

    iget-wide v2, p1, Lcom/android/settings/sound/n;->aqv:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 84
    check-cast p1, Lcom/android/settings/sound/n;

    check-cast p2, Lcom/android/settings/sound/n;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/sound/e;->a(Lcom/android/settings/sound/n;Lcom/android/settings/sound/n;)I

    move-result v0

    return v0
.end method
