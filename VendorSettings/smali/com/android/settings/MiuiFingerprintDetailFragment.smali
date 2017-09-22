.class public Lcom/android/settings/MiuiFingerprintDetailFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiFingerprintDetailFragment.java"


# instance fields
.field private mView:Landroid/view/View;

.field private qZ:Ljava/lang/String;

.field private ra:Ljava/lang/String;

.field private rb:Landroid/widget/EditText;

.field private rc:Landroid/widget/Button;

.field private rd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rd:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->qZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiFingerprintDetailFragment;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rd:Z

    return p1
.end method

.method private fc()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f1300f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rb:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f1300f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rc:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rb:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->ra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rb:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rb:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rb:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rc:Landroid/widget/Button;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 59
    new-instance v0, Lcom/android/settings/er;

    invoke-direct {v0, p0}, Lcom/android/settings/er;-><init>(Lcom/android/settings/MiuiFingerprintDetailFragment;)V

    .line 78
    new-instance v1, Lcom/android/settings/es;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/es;-><init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Lcom/android/settings/de;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rc:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/et;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/et;-><init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method private fd()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rb:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->rd:Z

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->qZ:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/df;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f04007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    .line 48
    invoke-direct {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->fc()V

    .line 49
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "extra_fingerprint_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->qZ:Ljava/lang/String;

    .line 41
    const-string v1, "extra_fingerprint_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->ra:Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->fd()V

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 106
    return-void
.end method
