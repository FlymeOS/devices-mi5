.class Lcom/android/settings/hi;
.super Lcom/android/settings/search/a;
.source "SecuritySettings.java"


# instance fields
.field vW:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    .line 922
    # getter for: Lcom/android/settings/SecuritySettings;->mE:I
    invoke-static {}, Lcom/android/settings/SecuritySettings;->access$000()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/hi;->vW:Z

    .line 923
    return-void

    .line 922
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6

    .prologue
    .line 969
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 970
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 972
    const v0, 0x7f0c01e7

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 974
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 975
    iput-object v3, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 976
    iput-object v3, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 977
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    iget-boolean v0, p0, Lcom/android/settings/hi;->vW:Z

    if-nez v0, :cond_0

    .line 980
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c01e3

    .line 983
    :goto_0
    new-instance v4, Lcom/android/settings/search/n;

    invoke-direct {v4, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 984
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 985
    iput-object v3, v4, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 986
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_0
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 992
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 994
    const v4, 0x7f0c01eb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 995
    iput-object v3, v0, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 996
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    :cond_1
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1002
    const-string v4, "no_config_credentials"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1003
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0c07e8

    .line 1009
    :goto_1
    new-instance v4, Lcom/android/settings/search/n;

    invoke-direct {v4, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 1010
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 1011
    iput-object v3, v4, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 1012
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_2
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1017
    # getter for: Lcom/android/settings/SecuritySettings;->mE:I
    invoke-static {}, Lcom/android/settings/SecuritySettings;->access$000()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1018
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v4, v1, v0}, Lcom/android/settings/SecuritySettings;->b(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1021
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1022
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ic;

    .line 1023
    new-instance v5, Lcom/android/settings/search/n;

    invoke-direct {v5, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 1024
    iget-object v0, v0, Lcom/android/settings/ic;->title:Ljava/lang/String;

    iput-object v0, v5, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 1025
    iput-object v3, v5, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 1026
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 980
    :cond_3
    const v0, 0x7f0c01e1

    goto/16 :goto_0

    .line 1005
    :cond_4
    const v0, 0x7f0c07e9

    goto :goto_1

    .line 1029
    :cond_5
    return-object v2
.end method

.method public c(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 929
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 931
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 933
    invoke-static {p1, v0}, Lcom/android/settings/SecuritySettings;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v1

    .line 935
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 936
    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 937
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    iget-boolean v0, p0, Lcom/android/settings/hi;->vW:Z

    if-eqz v0, :cond_0

    .line 940
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 943
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 954
    :goto_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 955
    iput v0, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 956
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 961
    const v1, 0x7f080092

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 962
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    return-object v2

    .line 946
    :pswitch_1
    const v0, 0x7f08008e

    .line 947
    goto :goto_0

    .line 950
    :pswitch_2
    const v0, 0x7f080098

    goto :goto_0

    .line 943
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public m(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .prologue
    .line 1034
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1038
    invoke-static {p1, v2}, Lcom/android/settings/SecuritySettings;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    .line 1041
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1042
    iget-boolean v3, p0, Lcom/android/settings/hi;->vW:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1043
    :cond_0
    const-string v0, "sim_lock"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_1
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1047
    const-string v3, "no_config_credentials"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1048
    const-string v0, "credentials_management"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_2
    # getter for: Lcom/android/settings/SecuritySettings;->mE:I
    invoke-static {}, Lcom/android/settings/SecuritySettings;->access$000()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1053
    const-string v0, "trust_agent"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    const-string v0, "manage_trust_agents"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    :cond_3
    return-object v1
.end method
