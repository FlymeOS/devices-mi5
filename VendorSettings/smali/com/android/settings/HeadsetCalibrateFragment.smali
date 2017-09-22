.class public Lcom/android/settings/HeadsetCalibrateFragment;
.super Lcom/android/settings/BaseFragment;
.source "HeadsetCalibrateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private ne:Ljava/lang/String;

.field private nf:Ljava/lang/String;

.field private ng:Z

.field private nh:Z

.field private ni:Landroid/widget/TextView;

.field private nj:Landroid/widget/TextView;

.field private nk:Landroid/view/View;

.field private nl:Landroid/view/View;

.field private nm:Landroid/view/View;

.field private nn:Landroid/view/View;

.field private no:Z

.field private final np:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ne:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nf:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ng:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nh:Z

    .line 206
    new-instance v0, Lcom/android/settings/dk;

    invoke-direct {v0, p0}, Lcom/android/settings/dk;-><init>(Lcom/android/settings/HeadsetCalibrateFragment;)V

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->np:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private F(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ng:Z

    .line 174
    const-string v0, "persist.sys.button_jack_switch"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ni:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nj:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nk:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    const-string v0, "persist.sys.button_jack_profile"

    const-string v1, "volume"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, "music"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ni:Landroid/widget/TextView;

    const v1, 0x7f0c0068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nj:Landroid/widget/TextView;

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ni:Landroid/widget/TextView;

    const v1, 0x7f0c0066

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nj:Landroid/widget/TextView;

    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/HeadsetCalibrateFragment;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nh:Z

    return p1
.end method

.method private eb()Z
    .locals 3

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ng:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nh:Z

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetCalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/settings/HeadsetCalibrateFragment;->np:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    iget-object v2, p0, Lcom/android/settings/HeadsetCalibrateFragment;->np:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 200
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Y()Z
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/settings/HeadsetCalibrateFragment;->eb()Z

    move-result v0

    .line 155
    if-nez v0, :cond_0

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->no:Z

    .line 158
    :cond_0
    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 39
    const v0, 0x7f0400bb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->no:Z

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->no:Z

    .line 106
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nk:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nh:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/HeadsetCalibrateFragment;->finish()V

    .line 69
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ng:Z

    if-nez v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x18

    const/4 v1, 0x1

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ng:Z

    if-nez v0, :cond_4

    .line 137
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_2

    .line 139
    :cond_0
    const-string v0, "persist.sys.button_jack_profile"

    iget-object v2, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ne:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-ne p1, v3, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/HeadsetCalibrateFragment;->F(Ljava/lang/String;)V

    move v0, v1

    .line 149
    :goto_1
    return v0

    .line 140
    :cond_1
    const-string v0, "1"

    goto :goto_0

    .line 142
    :cond_2
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x55

    if-ne p1, v0, :cond_4

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/HeadsetCalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0c006c

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 145
    goto :goto_1

    .line 149
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/android/settings/HeadsetCalibrateFragment;->eb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nl:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nh:Z

    if-nez v0, :cond_0

    .line 114
    const-string v0, "persist.sys.button_jack_profile"

    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ne:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "persist.sys.button_jack_switch"

    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nf:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onPause()V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onResume()V

    .line 91
    const-string v0, "persist.sys.button_jack_profile"

    const-string v1, "volume"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ne:Ljava/lang/String;

    .line 92
    const-string v0, "persist.sys.button_jack_profile"

    const-string v1, "volume"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "persist.sys.button_jack_switch"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nf:Ljava/lang/String;

    .line 94
    const-string v0, "persist.sys.button_jack_switch"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nl:Landroid/view/View;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 45
    const v0, 0x7f13015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ni:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f13015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nj:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f130157

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nl:Landroid/view/View;

    .line 48
    const v0, 0x7f130158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nm:Landroid/view/View;

    .line 49
    const v0, 0x7f130159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nn:Landroid/view/View;

    .line 50
    const v0, 0x7f13015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nk:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ni:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nj:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nk:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nm:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/16 v0, 0x8

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/HeadsetCalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HeadsetCalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nl:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->ng:Z

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nl:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nl:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nl:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateFragment;->nl:Landroid/view/View;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 81
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
