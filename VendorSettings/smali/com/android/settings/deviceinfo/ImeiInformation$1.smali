.class Lcom/android/settings/deviceinfo/ImeiInformation$1;
.super Ljava/lang/Object;
.source "ImeiInformation.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic Vh:Lcom/android/settings/deviceinfo/ImeiInformation;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/ImeiInformation;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/deviceinfo/ImeiInformation$1;->Vh:Lcom/android/settings/deviceinfo/ImeiInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 84
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/ImeiInformation$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
