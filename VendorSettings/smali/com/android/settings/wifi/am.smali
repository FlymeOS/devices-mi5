.class Lcom/android/settings/wifi/am;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/aj;


# instance fields
.field private final aDd:Z

.field private final aDe:Z

.field private aDr:Lcom/android/settings/wifi/ag;

.field private aDs:Z

.field private aDt:Z

.field private final avg:Landroid/content/DialogInterface$OnClickListener;

.field private final azP:Lcom/android/b/e/a;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const v0, 0x7f0d00a3

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 66
    iput-boolean p4, p0, Lcom/android/settings/wifi/am;->aDd:Z

    .line 67
    iput-boolean p5, p0, Lcom/android/settings/wifi/am;->aDe:Z

    .line 68
    iput-object p2, p0, Lcom/android/settings/wifi/am;->avg:Landroid/content/DialogInterface$OnClickListener;

    .line 69
    iput-object p3, p0, Lcom/android/settings/wifi/am;->azP:Lcom/android/b/e/a;

    .line 70
    iput-boolean v1, p0, Lcom/android/settings/wifi/am;->aDs:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/wifi/am;->aDt:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZZZ)V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/wifi/am;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZ)V

    .line 59
    iput-boolean p6, p0, Lcom/android/settings/wifi/am;->aDs:Z

    .line 60
    iput-boolean p7, p0, Lcom/android/settings/wifi/am;->aDt:Z

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/am;)Lcom/android/b/e/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/am;->azP:Lcom/android/b/e/a;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/am;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/am;->bK(Z)V

    return-void
.end method

.method private bK(Z)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/am;->mView:Landroid/view/View;

    const v1, 0x7f13021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 166
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 167
    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 171
    if-ltz v2, :cond_0

    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 174
    :cond_0
    return-void

    .line 167
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method


# virtual methods
.method public j(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 129
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/am;->avg:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/am;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 130
    return-void
.end method

.method public k(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 134
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings/wifi/am;->avg:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/am;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 135
    return-void
.end method

.method public l(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 139
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/am;->avg:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/am;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 140
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/am;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/am;->mView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/am;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/am;->setView(Landroid/view/View;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/am;->setInverseBackgroundForced(Z)V

    .line 84
    new-instance v0, Lcom/android/settings/wifi/ag;

    iget-object v2, p0, Lcom/android/settings/wifi/am;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/wifi/am;->azP:Lcom/android/b/e/a;

    iget-boolean v4, p0, Lcom/android/settings/wifi/am;->aDd:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/am;->aDe:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ag;-><init>(Lcom/android/settings/wifi/aj;Landroid/view/View;Lcom/android/b/e/a;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/am;->aDr:Lcom/android/settings/wifi/ag;

    .line 85
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/wifi/am;->aDs:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/am;->aDr:Lcom/android/settings/wifi/ag;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ag;->xP()V

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/am;->yo()V

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/wifi/am;->aDt:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/am;->aDr:Lcom/android/settings/wifi/ag;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ag;->xO()V

    .line 100
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/am;->aDr:Lcom/android/settings/wifi/ag;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ag;->xh()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/am;->aDr:Lcom/android/settings/wifi/ag;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ag;->ye()V

    .line 105
    return-void
.end method

.method public yh()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/am;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public yi()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 119
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/am;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public yn()Lcom/android/settings/wifi/ag;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/am;->aDr:Lcom/android/settings/wifi/ag;

    return-object v0
.end method

.method public yo()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/am;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/am;->azP:Lcom/android/b/e/a;

    iget-boolean v0, v0, Lcom/android/b/e/a;->aKN:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/am;->mView:Landroid/view/View;

    const v2, 0x7f13033b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    if-eqz v1, :cond_1

    const v2, 0x7f0202fd

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/am;->bK(Z)V

    .line 148
    new-instance v2, Lcom/android/settings/wifi/an;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/an;-><init>(Lcom/android/settings/wifi/am;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 146
    :cond_1
    const v2, 0x7f0202fa

    goto :goto_1
.end method
