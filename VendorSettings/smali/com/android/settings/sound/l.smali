.class Lcom/android/settings/sound/l;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aqt:Lcom/android/settings/sound/k;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/k;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/sound/l;->aqt:Lcom/android/settings/sound/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/android/settings/sound/l;->aqt:Lcom/android/settings/sound/k;

    invoke-virtual {v1, v0}, Lcom/android/settings/sound/k;->bF(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/sound/l;->aqt:Lcom/android/settings/sound/k;

    iget-object v1, v1, Lcom/android/settings/sound/k;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/sound/l;->aqt:Lcom/android/settings/sound/k;

    iget-object v2, v2, Lcom/android/settings/sound/k;->aqn:Lcom/android/settings/sound/AudioSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/sound/AudioSettingsFragment;->b(Lcom/android/settings/sound/AudioSettingsFragment;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/sound/p;->b(Landroid/content/Context;ILjava/lang/String;)Z

    .line 243
    iget-object v0, p0, Lcom/android/settings/sound/l;->aqt:Lcom/android/settings/sound/k;

    invoke-virtual {v0}, Lcom/android/settings/sound/k;->notifyDataSetChanged()V

    .line 244
    return-void
.end method
