.class Lcom/android/settings/il;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private final BA:Lcom/android/settings/iq;

.field final synthetic Br:Lcom/android/settings/TrustedCredentialsSettings;

.field private final By:Landroid/util/SparseArray;

.field private final Bz:Lcom/android/settings/TrustedCredentialsSettings$Tab;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/iq;)V
    .locals 1

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/settings/il;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/il;->By:Landroid/util/SparseArray;

    .line 408
    iput-object p3, p0, Lcom/android/settings/il;->BA:Lcom/android/settings/iq;

    .line 409
    iput-object p2, p0, Lcom/android/settings/il;->Bz:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/iq;Lcom/android/settings/id;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/il;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/iq;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/il;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/il;->By:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/il;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/il;->Bz:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/il;)Lcom/android/settings/iq;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/il;->BA:Lcom/android/settings/iq;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/settings/io;)V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/settings/il;->By:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings/il;->By:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/settings/io;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 513
    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    return-void
.end method
