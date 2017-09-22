.class public Lcom/android/vendorsettings/cloud/push/m;
.super Ljava/lang/Object;
.source "RunningCompatibility.java"


# instance fields
.field private Uh:Ljava/lang/String;

.field private Uj:Z

.field private Uk:Ljava/util/Set;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public aF(Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/vendorsettings/cloud/push/m;->Uj:Z

    .line 39
    return-void
.end method

.method public c(Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/vendorsettings/cloud/push/m;->Uk:Ljava/util/Set;

    .line 47
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/push/m;->Uh:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/push/m;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public oI()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/vendorsettings/cloud/push/m;->Uj:Z

    return v0
.end method

.method public oJ()Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/push/m;->Uk:Ljava/util/Set;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/vendorsettings/cloud/push/m;->Uh:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/vendorsettings/cloud/push/m;->mPackageName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunningCompatibility : PackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/cloud/push/m;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/cloud/push/m;->Uh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Precise = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vendorsettings/cloud/push/m;->Uj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Versions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/cloud/push/m;->Uk:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
