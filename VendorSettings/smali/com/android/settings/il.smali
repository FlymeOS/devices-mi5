.class Lcom/android/vendorsettings/il;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private final BA:Lcom/android/vendorsettings/iq;

.field final synthetic Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

.field private final By:Landroid/util/SparseArray;

.field private final Bz:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/iq;)V
    .locals 1

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/vendorsettings/il;->Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/il;->By:Landroid/util/SparseArray;

    .line 408
    iput-object p3, p0, Lcom/android/vendorsettings/il;->BA:Lcom/android/vendorsettings/iq;

    .line 409
    iput-object p2, p0, Lcom/android/vendorsettings/il;->Bz:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/iq;Lcom/android/vendorsettings/id;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vendorsettings/il;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/iq;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/il;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/vendorsettings/il;->By:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/il;)Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/vendorsettings/il;->Bz:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/il;)Lcom/android/vendorsettings/iq;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/vendorsettings/il;->BA:Lcom/android/vendorsettings/iq;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/vendorsettings/io;)V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/vendorsettings/il;->By:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/vendorsettings/il;->By:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/vendorsettings/io;->mProfileId:I

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
