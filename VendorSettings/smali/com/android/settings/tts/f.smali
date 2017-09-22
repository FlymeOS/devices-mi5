.class Lcom/android/settings/tts/f;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic asO:Lcom/android/settings/tts/e;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/e;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/tts/f;->asO:Lcom/android/settings/tts/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/tts/f;->asO:Lcom/android/settings/tts/e;

    invoke-static {v0, p1, p2}, Lcom/android/settings/tts/e;->a(Lcom/android/settings/tts/e;Landroid/widget/CompoundButton;Z)V

    .line 98
    return-void
.end method
