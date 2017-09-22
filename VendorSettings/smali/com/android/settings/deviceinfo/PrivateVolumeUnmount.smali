.class public Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "PrivateVolumeUnmount.java"


# instance fields
.field private final VQ:Landroid/view/View$OnClickListener;

.field private Vq:Landroid/os/storage/VolumeInfo;

.field private Vv:Landroid/os/storage/DiskInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount$1;-><init>(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->VQ:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;)Landroid/os/storage/VolumeInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->Vq:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 49
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->Vq:Landroid/os/storage/VolumeInfo;

    .line 51
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->Vv:Landroid/os/storage/DiskInfo;

    .line 53
    const v0, 0x7f04015e

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 54
    const v0, 0x7f1302c2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    const v1, 0x7f1302c3

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 57
    const v3, 0x7f0c0472

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;->VQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-object v2
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x2a

    return v0
.end method
