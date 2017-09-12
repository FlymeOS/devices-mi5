.class public Lmiui/provider/ExtraGuardVirusInfoEntity;
.super Ljava/lang/Object;
.source "ExtraGuardVirusInfoEntity.java"


# instance fields
.field private mAdvice:I

.field private mDescription:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mType:I

.field private mVirusName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    .line 19
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    .line 20
    iput v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    .line 21
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getAdvice()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    return v0
.end method

.method public getVirusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvice(I)V
    .locals 0
    .param p1, "_advice"    # I

    .prologue
    .line 46
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    .line 47
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "_description"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "_type"    # I

    .prologue
    .line 30
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    .line 31
    return-void
.end method

.method public setVirusName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_virusName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    .line 55
    return-void
.end method
