.class Lcom/android/vendorsettings/tts/j;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic asO:Lcom/android/vendorsettings/tts/e;

.field final synthetic asQ:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/tts/e;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/vendorsettings/tts/j;->asO:Lcom/android/vendorsettings/tts/e;

    iput-object p2, p0, Lcom/android/vendorsettings/tts/j;->asQ:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/tts/j;->asQ:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 245
    return-void
.end method
