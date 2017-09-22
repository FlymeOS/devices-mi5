.class public Lcom/android/settings/tts/e;
.super Lmiui/preference/RadioButtonPreference;
.source "TtsEnginePreference.java"


# instance fields
.field private agD:Landroid/widget/RadioButton;

.field private final asI:Lcom/android/settings/hn;

.field private final asJ:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final asK:Lcom/android/settings/tts/k;

.field private volatile asL:Z

.field private asM:Landroid/content/Intent;

.field private final asN:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private be:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/k;Lcom/android/settings/hn;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lcom/android/settings/tts/f;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/f;-><init>(Lcom/android/settings/tts/e;)V

    iput-object v0, p0, Lcom/android/settings/tts/e;->asN:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 106
    const v0, 0x7f0400f0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/e;->setWidgetLayoutResource(I)V

    .line 108
    iput-object p3, p0, Lcom/android/settings/tts/e;->asK:Lcom/android/settings/tts/k;

    .line 109
    iput-object p4, p0, Lcom/android/settings/tts/e;->asI:Lcom/android/settings/hn;

    .line 110
    iput-object p2, p0, Lcom/android/settings/tts/e;->asJ:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/tts/e;->asL:Z

    .line 113
    iget-object v0, p0, Lcom/android/settings/tts/e;->asJ:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/e;->setKey(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/tts/e;->asJ:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/android/settings/tts/e;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/tts/e;->asJ:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 208
    const-string v0, "TtsEnginePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying data alert for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/e;->asJ:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/tts/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c07b5

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/tts/e;->asJ:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v6, v6, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 220
    return-void
.end method

.method private a(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/settings/tts/e;->asL:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    if-eqz p2, :cond_3

    .line 234
    invoke-direct {p0}, Lcom/android/settings/tts/e;->uT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    new-instance v0, Lcom/android/settings/tts/i;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/tts/i;-><init>(Lcom/android/settings/tts/e;Landroid/widget/CompoundButton;)V

    new-instance v1, Lcom/android/settings/tts/j;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/tts/j;-><init>(Lcom/android/settings/tts/e;Landroid/widget/CompoundButton;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/tts/e;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/tts/e;->b(Landroid/widget/Checkable;)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/tts/e;Landroid/widget/Checkable;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/tts/e;->b(Landroid/widget/Checkable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/tts/e;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tts/e;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/tts/e;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/tts/e;->asM:Landroid/content/Intent;

    return-object v0
.end method

.method private b(Landroid/widget/Checkable;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings/tts/e;->asK:Lcom/android/settings/tts/k;

    invoke-interface {v0}, Lcom/android/settings/tts/k;->uR()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings/tts/e;->asK:Lcom/android/settings/tts/k;

    invoke-interface {v0}, Lcom/android/settings/tts/k;->uR()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/e;->asK:Lcom/android/settings/tts/k;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/k;->a(Landroid/widget/Checkable;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/tts/e;->asK:Lcom/android/settings/tts/k;

    invoke-virtual {p0}, Lcom/android/settings/tts/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/tts/k;->bP(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/tts/e;->asK:Lcom/android/settings/tts/k;

    invoke-interface {v0}, Lcom/android/settings/tts/k;->uS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/e;->callChangeListener(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 264
    return-void
.end method

.method static synthetic c(Lcom/android/settings/tts/e;)Lcom/android/settings/hn;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/tts/e;->asI:Lcom/android/settings/hn;

    return-object v0
.end method

.method private uT()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/tts/e;->asJ:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/tts/e;->asM:Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/e;->agD:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings/tts/e;->agD:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/settings/tts/e;->asK:Lcom/android/settings/tts/k;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 127
    const v0, 0x1020001

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 128
    iget-object v4, p0, Lcom/android/settings/tts/e;->asN:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/tts/e;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/e;->asK:Lcom/android/settings/tts/k;

    invoke-interface {v5}, Lcom/android/settings/tts/k;->uS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 131
    if-eqz v4, :cond_1

    .line 132
    iget-object v5, p0, Lcom/android/settings/tts/e;->asK:Lcom/android/settings/tts/k;

    invoke-interface {v5, v0}, Lcom/android/settings/tts/k;->a(Landroid/widget/Checkable;)V

    .line 135
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/tts/e;->asL:Z

    .line 136
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 137
    iput-boolean v2, p0, Lcom/android/settings/tts/e;->asL:Z

    .line 139
    iput-object v0, p0, Lcom/android/settings/tts/e;->agD:Landroid/widget/RadioButton;

    .line 144
    new-instance v5, Lcom/android/settings/tts/g;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/tts/g;-><init>(Lcom/android/settings/tts/e;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f1301d1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    .line 154
    iget-object v5, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/settings/tts/e;->asM:Landroid/content/Intent;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 155
    if-nez v4, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    new-instance v1, Lcom/android/settings/tts/h;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/h;-><init>(Lcom/android/settings/tts/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/tts/e;->asM:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/settings/tts/e;->be:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/tts/e;->agD:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 182
    :cond_3
    return-object v3

    :cond_4
    move v0, v2

    .line 154
    goto :goto_0
.end method
