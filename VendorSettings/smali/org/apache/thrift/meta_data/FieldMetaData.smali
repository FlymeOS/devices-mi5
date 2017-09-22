.class public Lorg/apache/thrift/meta_data/FieldMetaData;
.super Ljava/lang/Object;
.source "FieldMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static bsq:Ljava/util/Map;


# instance fields
.field public final fieldName:Ljava/lang/String;

.field public final requirementType:B

.field public final valueMetaData:Lorg/apache/thrift/meta_data/FieldValueMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/thrift/meta_data/FieldMetaData;->bsq:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/thrift/meta_data/FieldMetaData;->fieldName:Ljava/lang/String;

    .line 43
    iput-byte p2, p0, Lorg/apache/thrift/meta_data/FieldMetaData;->requirementType:B

    .line 44
    iput-object p3, p0, Lorg/apache/thrift/meta_data/FieldMetaData;->valueMetaData:Lorg/apache/thrift/meta_data/FieldValueMetaData;

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/apache/thrift/meta_data/FieldMetaData;->bsq:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
