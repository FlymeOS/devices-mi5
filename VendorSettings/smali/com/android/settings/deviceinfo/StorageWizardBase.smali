.class public abstract Lcom/android/settings/deviceinfo/StorageWizardBase;
.super Landroid/app/Activity;
.source "StorageWizardBase.java"


# instance fields
.field protected Vi:Landroid/os/storage/StorageManager;

.field protected Vq:Landroid/os/storage/VolumeInfo;

.field protected Vv:Landroid/os/storage/DiskInfo;

.field private final Wj:Landroid/os/storage/StorageEventListener;

.field private Xn:Landroid/view/View;

.field private Xo:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 197
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardBase$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$2;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Wj:Landroid/os/storage/StorageEventListener;

    return-void
.end method


# virtual methods
.method protected varargs a(I[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->pm()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->m(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method protected aJ(Z)V
    .locals 3

    .prologue
    const v2, 0x7f02004a

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->pm()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f02004b

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->A(II)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->pm()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f02004c

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->A(II)V

    goto :goto_0
.end method

.method protected varargs b(I[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f1302c5

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method protected by(I)V
    .locals 6

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->pn()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    const v0, 0x7f1302d2

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method protected bz(I)Landroid/os/storage/VolumeInfo;
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vi:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 190
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 194
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs c(I[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    const v0, 0x7f1302c6

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    return-void
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Xo:Landroid/widget/Button;

    return-object v0
.end method

.method public hY()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vi:Landroid/os/storage/StorageManager;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vi:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vq:Landroid/os/storage/VolumeInfo;

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vi:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vv:Landroid/os/storage/DiskInfo;

    .line 70
    :cond_1
    :goto_0
    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTheme(I)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vv:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vi:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Wj:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 75
    :cond_2
    return-void

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vq:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vv:Landroid/os/storage/DiskInfo;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Vi:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Wj:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 132
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 110
    const v1, -0x7ffeff00

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 113
    invoke-virtual {v0, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Xn:Landroid/view/View;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 118
    const v0, 0x7f1302d9

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 123
    const v0, 0x7f1302d5

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    return-void
.end method

.method protected pm()Lcom/android/setupwizardlib/SetupWizardLayout;
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f1300f6

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method protected pn()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 143
    const v0, 0x7f1302d1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public setContentView(I)V
    .locals 5

    .prologue
    const v4, 0x7f1302cd

    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040164

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Xn:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Xn:Landroid/view/View;

    const v3, 0x7f1302d0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Xo:Landroid/widget/Button;

    .line 88
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Xo:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v1, v2

    .line 96
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->Xn:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 103
    :cond_0
    return-void

    .line 96
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected setKeepScreenOn(Z)V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->pm()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setKeepScreenOn(Z)V

    .line 181
    return-void
.end method
