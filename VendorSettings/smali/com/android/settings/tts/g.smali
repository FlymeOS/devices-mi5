.class Lcom/android/settings/tts/g;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic asO:Lcom/android/settings/tts/e;

.field final synthetic asP:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/e;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings/tts/g;->asO:Lcom/android/settings/tts/e;

    iput-object p2, p0, Lcom/android/settings/tts/g;->asP:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/settings/tts/g;->asO:Lcom/android/settings/tts/e;

    iget-object v2, p0, Lcom/android/settings/tts/g;->asP:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/tts/g;->asP:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/settings/tts/e;->a(Lcom/android/settings/tts/e;Landroid/widget/CompoundButton;Z)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
