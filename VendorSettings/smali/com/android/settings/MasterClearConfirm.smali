.class public Lcom/android/vendorsettings/MasterClearConfirm;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "MasterClearConfirm.java"


# instance fields
.field private gC:Landroid/view/View;

.field private gE:Landroid/view/View$OnClickListener;

.field private pM:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/android/vendorsettings/dS;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/dS;-><init>(Lcom/android/vendorsettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/vendorsettings/MasterClearConfirm;->gE:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/MasterClearConfirm;->eG()V

    return-void
.end method

.method private bm()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/MasterClearConfirm;->gC:Landroid/view/View;

    const v1, 0x7f130135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MasterClearConfirm;->gE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method private eG()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    iget-boolean v2, p0, Lcom/android/vendorsettings/MasterClearConfirm;->pM:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/android/vendorsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method private eH()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/vendorsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 158
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/vendorsettings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/MasterClearConfirm;->pM:Z

    .line 167
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/vendorsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const v0, 0x7f0400ab

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const v0, 0x7f0400aa

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/MasterClearConfirm;->gC:Landroid/view/View;

    .line 143
    invoke-direct {p0}, Lcom/android/vendorsettings/MasterClearConfirm;->bm()V

    .line 144
    invoke-direct {p0}, Lcom/android/vendorsettings/MasterClearConfirm;->eH()V

    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/MasterClearConfirm;->gC:Landroid/view/View;

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x43

    return v0
.end method
