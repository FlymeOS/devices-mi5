.class Lcom/android/vendorsettings/iK;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private Cu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/android/vendorsettings/iK;->Cu:Ljava/lang/String;

    .line 256
    return-void
.end method

.method private q(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 280
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;)I
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/vendorsettings/iK;->Cu:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/vendorsettings/iK;->Cu:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 270
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/iK;->q(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/iK;->q(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/iK;->q(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    const/4 v0, -0x1

    goto :goto_0

    .line 276
    :cond_2
    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 251
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/iK;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method
