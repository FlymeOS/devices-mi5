.class public Lcom/android/vendorsettings/i;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mStatus:I

.field private t:Ljava/util/ArrayList;

.field private u:Landroid/widget/ImageView;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/android/vendorsettings/i;->mAccount:Landroid/accounts/Account;

    .line 49
    iput-object p4, p0, Lcom/android/vendorsettings/i;->t:Ljava/util/ArrayList;

    .line 50
    iput-boolean p5, p0, Lcom/android/vendorsettings/i;->v:Z

    .line 51
    if-eqz p5, :cond_0

    .line 52
    invoke-virtual {p0, p3}, Lcom/android/vendorsettings/i;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/i;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/i;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/i;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/i;->setPersistent(Z)V

    .line 59
    invoke-virtual {p0, v2, v1}, Lcom/android/vendorsettings/i;->a(IZ)V

    .line 60
    return-void

    .line 54
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/i;->c(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/i;->setIcon(I)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 4

    .prologue
    const v0, 0x7f0c0854

    .line 93
    packed-switch p1, :pswitch_data_0

    .line 108
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    :pswitch_0
    return v0

    .line 95
    :pswitch_1
    const v0, 0x7f0c0852

    .line 96
    goto :goto_0

    .line 98
    :pswitch_2
    const v0, 0x7f0c0853

    .line 99
    goto :goto_0

    .line 104
    :pswitch_3
    const v0, 0x7f0c0856

    .line 105
    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private c(I)I
    .locals 4

    .prologue
    const v0, 0x7f0201a4

    .line 115
    packed-switch p1, :pswitch_data_0

    .line 128
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    :pswitch_0
    return v0

    .line 118
    :pswitch_1
    const v0, 0x7f020191

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    const v0, 0x7f0201a2

    .line 122
    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(I)Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f0c0845

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 144
    const-string v0, "AccountPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/vendorsettings/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 136
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0842

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0843

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0844

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    .line 81
    iput p1, p0, Lcom/android/vendorsettings/i;->mStatus:I

    .line 82
    iget-boolean v0, p0, Lcom/android/vendorsettings/i;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/i;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/i;->u:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/vendorsettings/i;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/android/vendorsettings/i;->u:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/vendorsettings/i;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/i;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    .line 87
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/i;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/i;->setSummary(I)V

    .line 89
    :cond_1
    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/vendorsettings/i;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/i;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 73
    iget-boolean v0, p0, Lcom/android/vendorsettings/i;->v:Z

    if-nez v0, :cond_0

    .line 74
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/i;->u:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/i;->u:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/vendorsettings/i;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/i;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/i;->u:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/vendorsettings/i;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/i;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    return-void
.end method
